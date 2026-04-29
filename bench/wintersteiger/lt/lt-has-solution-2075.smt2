(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4912078653425282492861470018397085368633270263671875p228 {+ 2212203559318067 228 (6.43246e+068)}
; Y = 1.484585615114959455951293421094305813312530517578125p-782 {+ 2182379595660834 -782 (5.83645e-236)}
; 1.4912078653425282492861470018397085368633270263671875p228 < 1.484585615114959455951293421094305813312530517578125p-782 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011100011 #b0111110110111111110011000111010100101111001000110011)))
(assert (= y (fp #b0 #b00011110001 #b0111110000001101110011011000100100000111111000100010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
