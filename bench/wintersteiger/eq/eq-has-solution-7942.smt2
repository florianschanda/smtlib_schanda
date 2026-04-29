(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.220427301179213497306363933603279292583465576171875p-773 {+ 992716311452990 -773 (2.45655e-233)}
; Y = 1.7745096810434173306703087291680276393890380859375p-636 {+ 3488081510941976 -636 (6.22302e-192)}
; 1.220427301179213497306363933603279292583465576171875p-773 = 1.7745096810434173306703087291680276393890380859375p-636 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011111010 #b0011100001101101111011000111000110110101110100111110)))
(assert (= y (fp #b0 #b00110000011 #b1100011001000110010001000011011010000100010100011000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
