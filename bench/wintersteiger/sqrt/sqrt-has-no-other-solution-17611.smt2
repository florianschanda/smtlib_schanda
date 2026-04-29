(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.224058382385048826535012267413549125194549560546875p632 {+ 1009069247418542 632 (2.18152e+190)}
; 1.224058382385048826535012267413549125194549560546875p632 S == 1.106371719805350206655703004798851907253265380859375p316
; [HW: 1.106371719805350206655703004798851907253265380859375p316] 

; mpf : + 479055637678134 316
; mpfd: + 479055637678134 316 (1.477e+095) class: Pos. norm. non-zero
; hwf : + 479055637678134 316 (1.477e+095) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001110111 #b0011100101011011111000111110000010111101000010101110)))
(assert (= r (fp #b0 #b10100111011 #b0001101100111011001011010101000111001000100000110110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
