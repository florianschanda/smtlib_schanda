(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.267273131227114379981912861694581806659698486328125p-101 {- 1203691174200578 -101 (-4.99851e-031)}
; -1.267273131227114379981912861694581806659698486328125p-101 | == 1.267273131227114379981912861694581806659698486328125p-101
; [HW: 1.267273131227114379981912861694581806659698486328125p-101] 

; mpf : + 1203691174200578 -101
; mpfd: + 1203691174200578 -101 (4.99851e-031) class: Pos. norm. non-zero
; hwf : + 1203691174200578 -101 (4.99851e-031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110011010 #b0100010001101100000000110000110110111000010100000010)))
(assert (= r (fp #b0 #b01110011010 #b0100010001101100000000110000110110111000010100000010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
