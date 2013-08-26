﻿using eStore.Domain;
using eStore.Web.Infrastructure.ObjectMapper;
using eStore.Web.UI.Areas.Account.ViewModels;
using eStore.Web.UI.Areas.Store.ViewModels;
using System;

namespace eStore.Web.UI.Logic
{
    public class StoreViewModelProfile : IProfile
    {
        public string ProfileName
        {
            get
            {
                return "StoreViewModel";
            }
        }

        public void Configure()
        {
            ObjectMapperConfigurator.CreateMap<Genre, GenreModel>();
            ObjectMapperConfigurator.CreateMap<GenreModel, Genre>();
            ObjectMapperConfigurator.CreateMap<Genre, GenreFullModel>();
            ObjectMapperConfigurator.CreateMap<GenreFullModel, Genre>();
            ObjectMapperConfigurator.CreateMap<Book, BookModel, string>(x => x.Author, w => w.Author.Name);
            ObjectMapperConfigurator.CreateMap<Book, BookModelEx, string>(x => x.Author, w => w.Author.Name);
            ObjectMapperConfigurator.CreateMap<Book, BookFullModel, string>(x => x.Author, w => w.Author.Name);
            ObjectMapperConfigurator.CreateMap<BookFullModel, Book>(x => x.Author);
        }
    }
}
