(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4300674773378914128585392973036505281925201416015625p513 {- 1936851730683097 513 (-3.83481e+154)}
; -1.4300674773378914128585392973036505281925201416015625p513 | == 1.4300674773378914128585392973036505281925201416015625p513
; [HW: 1.4300674773378914128585392973036505281925201416015625p513] 

; mpf : + 1936851730683097 513
; mpfd: + 1936851730683097 513 (3.83481e+154) class: Pos. norm. non-zero
; hwf : + 1936851730683097 513 (3.83481e+154) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000000000 #b0110111000011000111001101111011000111101010011011001)))
(assert (= r (fp #b0 #b11000000000 #b0110111000011000111001101111011000111101010011011001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
