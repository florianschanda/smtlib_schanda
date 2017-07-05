(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4442587466960912223612467641942203044891357421875p-308 {+ 2000763526076600 -308 (2.76953e-093)}
; 1.4442587466960912223612467641942203044891357421875p-308 S == 1.2017731677384426713928178287460468709468841552734375p-154
; [HW: 1.2017731677384426713928178287460468709468841552734375p-154] 

; mpf : + 908705563040215 -154
; mpfd: + 908705563040215 -154 (5.26263e-047) class: Pos. norm. non-zero
; hwf : + 908705563040215 -154 (5.26263e-047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011001011 #b0111000110111010111100001111010000000101100010111000)))
(assert (= r (fp #b0 #b01101100101 #b0011001110100111011010000000010010100101100111010111)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
