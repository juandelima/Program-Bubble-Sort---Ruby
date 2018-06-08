class BubbleSort
	data = []
	def tampilkan_data(data, n)
		for n in 0...data.length
			print "#{data[n]} "
		end
	end

	def urutkan(data, n)
		adaPenukaran = true
		tahap = 1
		while tahap <= n-1 && adaPenukaran
			adaPenukaran = false
			for j in 0...n-tahap
				if data[j] > data[j + 1]
					adaPenukaran = true
					#swap
					tmp = data[j]
					data[j] = data[j + 1]
					data[j + 1] = tmp
				end
			end
			print "Hasil tahap-#{tahap} : "
			tampilkan_data(data, n)
			tahap += 1
			puts
		end
	end
end

bubble = BubbleSort.new
data = []
print "Masukkan banyak angka : "
bnyk_angka = gets.to_i
for i in 0...bnyk_angka
	print "Angka ke-#{i+1} : "
	data[i] = gets.to_i
end
print "Data sebelum diurutkan : "
for j in 0...bnyk_angka
	print "#{data[j]} "
end
puts
bubble.urutkan(data, data.length)
print "Hasil pengurutan data : "
bubble.tampilkan_data(data, data.length)
