(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.03099015908945101926974530215375125408172607421875p879 {+ 139567268927404 879 (4.15548e+264)}
; Y = 1.3930265207180365649719533394090831279754638671875p-782 {+ 1770034092252472 -782 (5.4765e-236)}
; 1.03099015908945101926974530215375125408172607421875p879 - 1.3930265207180365649719533394090831279754638671875p-782 == 1.03099015908945101926974530215375125408172607421875p879
; [HW: 1.03099015908945101926974530215375125408172607421875p879] 

; mpf : + 139567268927404 879
; mpfd: + 139567268927404 879 (4.15548e+264) class: Pos. norm. non-zero
; hwf : + 139567268927404 879 (4.15548e+264) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101101110 #b0000011111101110111110001001011111001001011110101100)))
(assert (= y (fp #b0 #b00011110001 #b0110010010011101011000101101010011110001110100111000)))
(assert (= r (fp #b0 #b11101101110 #b0000011111101110111110001001011111001001011110101100)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
