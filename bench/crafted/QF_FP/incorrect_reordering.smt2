(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(declare-const a Float32)
(declare-const b Float32)
(declare-const n Float32)

;; This shows the following reasoning is not OK for floats:
;;
;; a < n * b
;; a / b < n     (divide by b)
;; a / b <= n    (weaken)
;;
;; All assuming b > 0

(assert (fp.lt a (fp.mul RNE n b)))
(assert (fp.gt b (_ +zero 8 24)))

(assert (not (fp.leq (fp.div RNE a b) n)))
(check-sat)
(exit)
