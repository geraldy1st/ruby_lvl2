def trader_du_dimanche(array)
   index = 0
   profit = 0
   index_achat = 0
   index_vente = 0

   for x in 0..(array.length - 2)
     for j in (x + 1)..(array.length - 1)
       unless array[x] > array [j]
         index = array[j] - array[x]
         if index > profit
           profit = index
           index_achat = x
           index_vente = j
         end
       end
     end
   end
   puts "jour d'achat: #{index_achat} / jour de revente: #{index_vente} / bénéfice = #{profit} "
end

trader_du_dimanche([17,3,6,9,15,8,6,1,10])
