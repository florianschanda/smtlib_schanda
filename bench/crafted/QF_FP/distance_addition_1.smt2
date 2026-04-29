(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(define-const distance__first Float32 ((_ to_fp 8 24) RNE 0.0))
(define-const distance__last  Float32 ((_ to_fp 8 24) RNE (* 91.0 11600.0)))
(define-fun in_range ((x Float32)) Bool
  (and (fp.leq distance__first x)
       (fp.leq x distance__last)))

(declare-const d1 Float32)
(declare-const d2 Float32)
(assert (in_range d1))
(assert (in_range d2))

(declare-const d Float32)
(assert (=> (fp.leq d1 (fp.sub RNE distance__last d2))
            (= d (fp.add RNE d1 d2))))
(assert (=> (not (fp.leq d1 (fp.sub RNE distance__last d2)))
            (= d distance__last)))

(assert (not (in_range d)))

(check-sat)
(exit)
