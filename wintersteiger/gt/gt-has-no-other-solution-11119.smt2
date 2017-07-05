(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2789531659897235282841165826539508998394012451171875p379 {+ 1256293374405139 379 (1.57479e+114)}
; Y = 1.1460449825296896708692884203628636896610260009765625p-404 {+ 657728128900041 -404 (2.77385e-122)}
; 1.2789531659897235282841165826539508998394012451171875p379 > 1.1460449825296896708692884203628636896610260009765625p-404 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101111010 #b0100011101101001011110011000010100001010101000010011)))
(assert (= y (fp #b0 #b01001101011 #b0010010101100011001101000011011110110101101111001001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
