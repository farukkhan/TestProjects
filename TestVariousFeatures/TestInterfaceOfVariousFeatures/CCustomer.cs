using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestInterfaceOfVariousFeatures
{
    public class CCustomer
    {
        public CCustomer()
        {

        }

        private int _iId;

        public int Id
        {
            get { return _iId; }
            set { _iId = value; }
        }

        private string _sName;

        public string Name
        {
            get { return _sName; }
            set { _sName = value; }
        }
    }
}
