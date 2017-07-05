(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2137449487664671021747153645264916121959686279296875p-820 {+ 962621671616987 -820 (1.73593e-247)}
; Y = -1.43972491684415704327193452627398073673248291015625p130 {- 1980344971644868 130 (-1.95965e+039)}
; 1.2137449487664671021747153645264916121959686279296875p-820 > -1.43972491684415704327193452627398073673248291015625p130 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011001011 #b0011011010110111111111010010110010100011000111011011)))
(assert (= y (fp #b1 #b10010000001 #b0111000010010001110011111110100100010100111111000100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
