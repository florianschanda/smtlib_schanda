(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0003396439716425447841174900531768798828125p-174 {- 1529620464128 -174 (-4.17761e-053)}
; Y = 1.9608124059700779984183327542268671095371246337890625p-115 {+ 4327114393499793 -115 (4.72048e-035)}
; Z = 1.6951593440199019813263703326811082661151885986328125p-226 {+ 3130719362691149 -226 (1.57192e-068)}
; -1.0003396439716425447841174900531768798828125p-174 x 1.9608124059700779984183327542268671095371246337890625p-115 1.6951593440199019813263703326811082661151885986328125p-226 == 1.69515934401990175928176540764980018138885498046875p-226
; [HW: 1.69515934401990175928176540764980018138885498046875p-226] 

; mpf : + 3130719362691148 -226
; mpfd: + 3130719362691148 -226 (1.57192e-068) class: Pos. norm. non-zero
; hwf : + 3130719362691148 -226 (1.57192e-068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101010001 #b0000000000010110010000100100011111000000001000000000)))
(assert (= y (fp #b0 #b01110001100 #b1111010111110111110011010100010100111011100010010001)))
(assert (= z (fp #b0 #b01100011101 #b1011000111110101111101100111100000010011000001001101)))
(assert (= r (fp #b0 #b01100011101 #b1011000111110101111101100111100000010011000001001100)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
