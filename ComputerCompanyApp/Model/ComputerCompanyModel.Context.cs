﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ComputerCompanyApp.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ComputerCompanyEntities1 : DbContext
    {
        private static ComputerCompanyEntities1 _context;
        public ComputerCompanyEntities1()
            : base("name=ComputerCompanyEntities1")
        {
        }
    
        public static ComputerCompanyEntities1 GetContext()
        {
            if( _context == null )
                _context = new ComputerCompanyEntities1();
            return _context;
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Assembling> Assembling { get; set; }
        public virtual DbSet<Authorization> Authorization { get; set; }
        public virtual DbSet<Client> Client { get; set; }
        public virtual DbSet<Component> Component { get; set; }
        public virtual DbSet<ComponentType> ComponentType { get; set; }
        public virtual DbSet<Dealer> Dealer { get; set; }
        public virtual DbSet<DealStatus> DealStatus { get; set; }
        public virtual DbSet<Employee> Employee { get; set; }
        public virtual DbSet<Order> Order { get; set; }
        public virtual DbSet<OrderType> OrderType { get; set; }
        public virtual DbSet<Post> Post { get; set; }
        public virtual DbSet<Purchase> Purchase { get; set; }
        public virtual DbSet<Repair> Repair { get; set; }
        public virtual DbSet<RepairResult> RepairResult { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Technique> Technique { get; set; }
        public virtual DbSet<Testing> Testing { get; set; }
        public virtual DbSet<TestingResult> TestingResult { get; set; }
    }
}
