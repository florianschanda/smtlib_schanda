(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2063767993553025092978714383207261562347412109375p-21 {+ 929438476674456 -21 (5.75245e-007)}
; 1.2063767993553025092978714383207261562347412109375p-21 S == 1.5533040908690753933996120395022444427013397216796875p-11
; [HW: 1.5533040908690753933996120395022444427013397216796875p-11] 

; mpf : + 2491860097460539 -11
; mpfd: + 2491860097460539 -11 (0.000758449) class: Pos. norm. non-zero
; hwf : + 2491860097460539 -11 (0.000758449) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111101010 #b0011010011010101000111000010001111100010010110011000)))
(assert (= r (fp #b0 #b01111110100 #b1000110110100101010101100011111100000110100100111011)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
