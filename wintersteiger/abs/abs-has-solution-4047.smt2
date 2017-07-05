(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0420753482869915540476313253748230636119842529296875p89 {+ 189490522866779 89 (6.45013e+026)}
; 1.0420753482869915540476313253748230636119842529296875p89 | == 1.0420753482869915540476313253748230636119842529296875p89
; [HW: 1.0420753482869915540476313253748230636119842529296875p89] 

; mpf : + 189490522866779 89
; mpfd: + 189490522866779 89 (6.45013e+026) class: Pos. norm. non-zero
; hwf : + 189490522866779 89 (6.45013e+026) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001011000 #b0000101011000101011100110011010011011100010001011011)))
(assert (= r (fp #b0 #b10001011000 #b0000101011000101011100110011010011011100010001011011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
