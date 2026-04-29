(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPBV)
(set-info :source |Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(define-const x Float32 ((_ to_fp 8 24) RNE (- 0.5)))

(define-const y (_ BitVec 8) ((_ fp.to_ubv 8) RNE x))
;; now -0.5 under RNE should round to 0 since the nearest *even*
;; number is 0, not -1. And that _does_ fit in an unsigned bitvector.

(define-const z (_ BitVec 8) #x00)

(assert (distinct y z))
(check-sat)
(exit)
