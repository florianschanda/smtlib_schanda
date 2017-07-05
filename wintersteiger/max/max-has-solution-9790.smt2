(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.328934387095928482125373193412087857723236083984375p372 {- 1481388783154566 372 (-1.27839e+112)}
; Y = -0.8469839976326916097804087257827632129192352294921875p-1022 {- 3814476816127363 -1023 (-1.8846e-308)}
; -1.328934387095928482125373193412087857723236083984375p372 M -0.8469839976326916097804087257827632129192352294921875p-1022 == -0.8469839976326916097804087257827632129192352294921875p-1022
; [HW: -0.8469839976326916097804087257827632129192352294921875p-1022] 

; mpf : - 3814476816127363 -1023
; mpfd: - 3814476816127363 -1023 (-1.8846e-308) class: Neg. denorm.
; hwf : - 3814476816127363 -1023 (-1.8846e-308) class: Neg. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101110011 #b0101010000110101000010110100001100011011010110000110)))
(assert (= y (fp #b1 #b00000000000 #b1101100011010011111100010111101000010001010110000011)))
(assert (= r (fp #b1 #b00000000000 #b1101100011010011111100010111101000010001010110000011)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
