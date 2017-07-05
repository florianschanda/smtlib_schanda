(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.64959371105763619169692901778034865856170654296875p-782 {+ 2925509995061388 -782 (6.48516e-236)}
; Y = -1.1160868209191703304128395757288672029972076416015625p-785 {- 522808563434201 -785 (-5.48468e-237)}
; 1.64959371105763619169692901778034865856170654296875p-782 % -1.1160868209191703304128395757288672029972076416015625p-785 == 1.839589316700431798068393618450500071048736572265625p-786
; [HW: 1.839589316700431798068393618450500071048736572265625p-786] 

; mpf : + 3781174133836314 -786
; mpfd: + 3781174133836314 -786 (4.52006e-237) class: Pos. norm. non-zero
; hwf : + 3781174133836314 -786 (4.52006e-237) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011110001 #b1010011001001011110001100000000010101110000010001100)))
(assert (= y (fp #b1 #b00011101110 #b0001110110110111110111011010101101011000001011011001)))
(assert (= r (fp #b1 #b00011101011 #x9201a0158ee60)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
