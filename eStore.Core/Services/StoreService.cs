﻿using System.Collections.Generic;
using System.Linq;
using eStore.Domain;
using eStore.Interfaces.Repositories;
using eStore.Interfaces.Services;

namespace eStore.Core.Services
{
    internal class StoreService : BaseUoWService, IStoreService
    {
        public StoreService(IUnitOfWork uow)
            : base(uow)
        {
        }

        #region IStoreService

        IEnumerable<Genre> IStoreService.GetGenres()
        {
            return UoW.GenreRepository.GetAll();
        }

        IEnumerable<Author> IStoreService.GetAuthors()
        {
            return UoW.AuthorRepository.GetAll();
        }

        IEnumerable<Book> IStoreService.GetBooksByGenre(int genreId)
        {
            return UoW.BooksRepository.Find(x => x.GenreId == genreId).OrderBy(x => x.Title);
        }

        Book IStoreService.GetBookById(int bookId)
        {
            return UoW.BooksRepository.Find(x => x.BookId == bookId).FirstOrDefault();
        }

        void IStoreService.Update(Book book)
        {
            UoW.BooksRepository.Update(book);
            UoW.Save();
        }

        void IStoreService.Delete(Book book)
        {
            UoW.BooksRepository.Delete(book);
            UoW.Save();
        }

        void IStoreService.Add(Genre genre)
        {
            UoW.GenreRepository.Add(genre);
            UoW.Save();
        }

        void IStoreService.Add(Author author)
        {
            UoW.AuthorRepository.Add(author);
            UoW.Save();
        }

        void IStoreService.Add(Book book)
        {
            UoW.BooksRepository.Add(book);
            UoW.Save();
        }

        Genre IStoreService.GetGenreById(int genreId)
        {
            return UoW.GenreRepository.Find(x => x.GenreId == genreId).FirstOrDefault();
        }

        void IStoreService.Update(Genre genre)
        {
            UoW.GenreRepository.Update(genre);
            UoW.Save();
        }

        void IStoreService.DeleteGenreById(int id)
        {
            var genre = UoW.GenreRepository.Find(x => x.GenreId == id).FirstOrDefault();

            if (genre != null)
            {
                UoW.GenreRepository.Delete(genre);
                UoW.Save();
            }
        }

        #endregion

    }
}
