(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3336513060635848404444914194755256175994873046875p791 {- 1502631897659640 791 (-1.73688e+238)}
; -1.3336513060635848404444914194755256175994873046875p791 | == 1.3336513060635848404444914194755256175994873046875p791
; [HW: 1.3336513060635848404444914194755256175994873046875p791] 

; mpf : + 1502631897659640 791
; mpfd: + 1502631897659640 791 (1.73688e+238) class: Pos. norm. non-zero
; hwf : + 1502631897659640 791 (1.73688e+238) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100010110 #b0101010101101010001011000000011111001111100011111000)))
(assert (= r (fp #b0 #b11100010110 #b0101010101101010001011000000011111001111100011111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
