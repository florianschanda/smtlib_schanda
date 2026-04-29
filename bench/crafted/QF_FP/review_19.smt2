(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Reviewing of some industrial code by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(define-const last Float32 ((_ to_fp 8 24) RNE 4096.0))
(define-const first Float32 (fp.neg last))

(define-fun in_range_1 ((x Float32)) Bool
  (and (fp.leq first x)
       (fp.leq x last)))

(declare-const x1 Float32)
(declare-const y1 Float32)
(assert (in_range_1 x1))
(assert (in_range_1 y1))

(declare-const x2 Float32)
(declare-const y2 Float32)
(assert (in_range_1 x2))
(assert (in_range_1 y2))

(assert (not (and (fp.eq x1 x2)
                  (fp.eq y1 y2))))

(define-const diff_x Float32 (fp.sub RNE x2 x1))
(define-const diff_y Float32 (fp.sub RNE y2 y1))

(assert (and (fp.isZero diff_x)
             (fp.isZero diff_y)))
(check-sat)
(exit)
