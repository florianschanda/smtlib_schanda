(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3064789544247528141340808360837399959564208984375p394 {- 1380258504944216 394 (-5.27134e+118)}
; Y = 1.4857621815243329255196158555918373167514801025390625p-274 {+ 2187678379703665 -274 (4.89475e-083)}
; -1.3064789544247528141340808360837399959564208984375p394 - 1.4857621815243329255196158555918373167514801025390625p-274 == -1.3064789544247530361786857611150480806827545166015625p394
; [HW: -1.3064789544247530361786857611150480806827545166015625p394] 

; mpf : - 1380258504944217 394
; mpfd: - 1380258504944217 394 (-5.27134e+118) class: Neg. norm. non-zero
; hwf : - 1380258504944217 394 (-5.27134e+118) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110001001 #b0100111001110101011001111001111000101010101001011000)))
(assert (= y (fp #b0 #b01011101101 #b0111110001011010111010010000101101000111110101110001)))
(assert (= r (fp #b1 #b10110001001 #b0100111001110101011001111001111000101010101001011001)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
