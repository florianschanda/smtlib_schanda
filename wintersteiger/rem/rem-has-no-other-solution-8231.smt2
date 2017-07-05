(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9861635191077458006958522673812694847583770751953125p992 {+ 4441285657180021 992 (8.31325e+298)}
; Y = -1.821968376993671423491605310118757188320159912109375p542 {- 3701816476339030 542 (-2.623e+163)}
; 1.9861635191077458006958522673812694847583770751953125p992 % -1.821968376993671423491605310118757188320159912109375p542 == 1.16343907130896440094147692434489727020263671875p539
; [HW: 1.16343907130896440094147692434489727020263671875p539] 

; mpf : + 736064140644832 539
; mpfd: + 736064140644832 539 (2.09368e+162) class: Pos. norm. non-zero
; hwf : + 736064140644832 539 (2.09368e+162) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111011111 #b1111110001110101001101100101111100010011011101110101)))
(assert (= y (fp #b1 #b11000011101 #b1101001001101100100001010000000110001000101101010110)))
(assert (= r (fp #b0 #b11000011010 #x29d7249a291e0)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
