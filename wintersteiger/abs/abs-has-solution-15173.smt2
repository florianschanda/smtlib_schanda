(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.078561549112769579750192860956303775310516357421875p-47 {+ 353809763309918 -47 (7.66364e-015)}
; 1.078561549112769579750192860956303775310516357421875p-47 | == 1.078561549112769579750192860956303775310516357421875p-47
; [HW: 1.078561549112769579750192860956303775310516357421875p-47] 

; mpf : + 353809763309918 -47
; mpfd: + 353809763309918 -47 (7.66364e-015) class: Pos. norm. non-zero
; hwf : + 353809763309918 -47 (7.66364e-015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111010000 #b0001010000011100100111000001010000101001100101011110)))
(assert (= r (fp #b0 #b01111010000 #b0001010000011100100111000001010000101001100101011110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
