(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5806681638361812503035253030247986316680908203125p227 {- 2615096926278536 227 (-3.40918e+068)}
; Y = 1.7747251230609764061085797948180697858333587646484375p421 {+ 3489051775531975 421 (9.61079e+126)}
; -1.5806681638361812503035253030247986316680908203125p227 > 1.7747251230609764061085797948180697858333587646484375p421 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011100010 #b1001010010100110101010110011010110000001001110001000)))
(assert (= y (fp #b0 #b10110100100 #b1100011001010100011000101011101011101111101111000111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
