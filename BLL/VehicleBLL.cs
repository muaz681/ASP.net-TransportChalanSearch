// sprTripChalanSeparate
        public DataTable GetTripChalanTable(int type, int unitID, string strChala)
        {
            sprTripChalanSeparateTableAdapter typeObj = new sprTripChalanSeparateTableAdapter();
            try
            {
                return typeObj.GetTripChalanData(type, unitID, strChala);

            }
            catch
            {
                return new DataTable();
            }
        }
// End