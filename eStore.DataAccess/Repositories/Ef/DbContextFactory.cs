﻿using System.Data.Entity.Infrastructure;

namespace eStore.DataAccess.Repositories.Ef
{
    internal class DbContextFactory : IDbContextFactory<EStoreDbContext>
    {
        private EStoreDbContext _context;

        #region IDbContextFactory<EStoreDbContext> Members

        EStoreDbContext IDbContextFactory<EStoreDbContext>.Create()
        {
            return _context ?? (_context = new EStoreDbContext(ConnectionStringFactory.ConnectionString));
            //return new EStoreDbContext(ConnectionStringFactory.ConnectionString);
        }

        #endregion
    }
}
