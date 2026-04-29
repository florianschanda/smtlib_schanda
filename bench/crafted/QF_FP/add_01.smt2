(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Florian Schanda, testcase for Z3|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x Float32)
(assert (= x (fp #b1 #b00000010 #b01100001000011000001011)))
;; This is a small normal number
;; Rational(-11568651, 356811923176489970264571492362373784095686656)

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b10110100101110000011101)))
;; This is a small subnormal number
;; Rational(-5921821, 713623846352979940529142984724747568191373312)

;; r = (f.add RNA x y)
;;
;;          nextDown(r)        nextUp(r)
;;         /         r        /
;;        /         /        /        x        y     -0 +0
;; <------|----|-|--|--------|-- .. --|-- .. --|-- .. |--|------>
;;             / \
;;            /   \
;;   halfpoint     (+ (to_real x) (to_real y))
;;
;; Given the above picture, I believe r should be r, and definitely
;; not nextUp(r).

(declare-const result Float32)
(assert (= result (fp.add RNA x y)))
(assert (not (= result (fp #b1 #b00000010 #b10111011011010000011010))))
(check-sat)
(exit)
