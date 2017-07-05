(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.999593203101937444188251902232877910137176513671875p401 {+ 4501767577011966 401 (1.03269e+121)}
; Y = 1.11226922358503355070524776238016784191131591796875p-686 {+ 505615633502732 -686 (3.46444e-207)}
; 1.999593203101937444188251902232877910137176513671875p401 < 1.11226922358503355070524776238016784191131591796875p-686 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110010000 #b1111111111100101010101110001010010100000011011111110)))
(assert (= y (fp #b0 #b00101010001 #b0001110010111101101011010000001110100101001000001100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
