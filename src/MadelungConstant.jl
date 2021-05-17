module MadelungConstant

import Plots


function Madelung(m)
	madelung = 0
	for i = -m:m
		for j = -m:m
			for k = -m:m
				if i == 0 && j == 0 && k == 0
					continue
				end
				madelung += ( (i + j + k) % 2 == 0 ? -1 : 1) / √(i^2 + j^2 + k^2)
			end
		end
	end
	madelung
end

function Madelung2(m)
	madelung = 0
	for i = -m:m
		for j = -m:m
			for k = -m:m
				if i == 0 && j == 0 && k == 0
					continue
				end
				r = √(i^2 + j^2 + k^2)
				if r > m
					continue
				end
				madelung += ((i + j + k) % 2 == 0 ? -1 : 1) / r
			end
		end
	end
	madelung
end

function plot(range=1:50)
    Plots.plot([Madelung, Madelung2], range, show=true)
end

end # module
