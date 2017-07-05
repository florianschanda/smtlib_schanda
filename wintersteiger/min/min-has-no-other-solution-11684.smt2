(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3528465935454876412080693626194261014461517333984375p487 {+ 1589079787210407 487 (5.40576e+146)}
; Y = -1.8575044535163243164532786977360956370830535888671875p-376 {- 3861856737324659 -376 (-1.20684e-113)}
; 1.3528465935454876412080693626194261014461517333984375p487 m -1.8575044535163243164532786977360956370830535888671875p-376 == -1.8575044535163243164532786977360956370830535888671875p-376
; [HW: -1.8575044535163243164532786977360956370830535888671875p-376] 

; mpf : - 3861856737324659 -376
; mpfd: - 3861856737324659 -376 (-1.20684e-113) class: Neg. norm. non-zero
; hwf : - 3861856737324659 -376 (-1.20684e-113) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111100110 #b0101101001010100001001111000001111001000011010100111)))
(assert (= y (fp #b1 #b01010000111 #b1101101110000101011010010111000000000110111001110011)))
(assert (= r (fp #b1 #b01010000111 #b1101101110000101011010010111000000000110111001110011)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
