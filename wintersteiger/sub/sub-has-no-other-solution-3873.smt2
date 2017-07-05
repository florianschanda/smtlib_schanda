(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1870531198242275650045485235750675201416015625p579 {+ 842412360738880 579 (2.34875e+174)}
; Y = -1.35332493514253204835995347821153700351715087890625p239 {- 1591234046248612 239 (-1.19556e+072)}
; 1.1870531198242275650045485235750675201416015625p579 - -1.35332493514253204835995347821153700351715087890625p239 == 1.1870531198242275650045485235750675201416015625p579
; [HW: 1.1870531198242275650045485235750675201416015625p579] 

; mpf : + 842412360738880 579
; mpfd: + 842412360738880 579 (2.34875e+174) class: Pos. norm. non-zero
; hwf : + 842412360738880 579 (2.34875e+174) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000010 #b0010111111100010101101101001100001000010100001000000)))
(assert (= y (fp #b1 #b10011101110 #b0101101001110011100000001100000101001100011010100100)))
(assert (= r (fp #b0 #b11001000010 #b0010111111100010101101101001100001000010100001000000)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
