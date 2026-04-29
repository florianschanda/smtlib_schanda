(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.205760370405685844019672003923915326595306396484375p47 {+ 926662327486662 47 (1.69696e+014)}
; 1.205760370405685844019672003923915326595306396484375p47 | == 1.205760370405685844019672003923915326595306396484375p47
; [HW: 1.205760370405685844019672003923915326595306396484375p47] 

; mpf : + 926662327486662 47
; mpfd: + 926662327486662 47 (1.69696e+014) class: Pos. norm. non-zero
; hwf : + 926662327486662 47 (1.69696e+014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000101110 #b0011010010101100101101100010110110110100100011000110)))
(assert (= r (fp #b0 #b10000101110 #b0011010010101100101101100010110110110100100011000110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
