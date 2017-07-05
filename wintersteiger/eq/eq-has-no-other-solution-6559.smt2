(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.399708138147948144336396580911241471767425537109375p-494 {+ 1800125422020054 -494 (2.73665e-149)}
; Y = -1.844637682163336567242595265270210802555084228515625p-117 {- 3803909950653882 -117 (-1.1102e-035)}
; 1.399708138147948144336396580911241471767425537109375p-494 = -1.844637682163336567242595265270210802555084228515625p-117 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000010001 #b0110011001010011010001011100010101001010010111010110)))
(assert (= y (fp #b1 #b01110001010 #b1101100000111010001011001101010111011100010110111010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
