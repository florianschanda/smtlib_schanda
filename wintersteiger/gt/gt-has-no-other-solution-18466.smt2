(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9575940178699269278439487607101909816265106201171875p448 {+ 4312620062051219 448 (1.42286e+135)}
; Y = -1.263278847370360669088995564379729330539703369140625p-434 {- 1185702518911690 -434 (-2.84761e-131)}
; 1.9575940178699269278439487607101909816265106201171875p448 > -1.263278847370360669088995564379729330539703369140625p-434 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110111111 #b1111010100100100111000011010110110011000101110010011)))
(assert (= y (fp #b1 #b01001001101 #b0100001101100110001111100001011100101111001011001010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
