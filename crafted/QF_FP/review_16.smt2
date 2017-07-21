(set-logic QF_FP)
(set-info :source |Reviewing of some industrial code by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun in_range_1 ((x Float32)) Bool
  (and (fp.leq ((_ to_fp 8 24) RNE (- 4096.0))
               x)
       (fp.leq x
               ((_ to_fp 8 24) RNE 4096.0))))

(define-fun in_range_2 ((x Float32)) Bool
  (and (fp.leq ((_ to_fp 8 24) RNE 0.0)
               x)
       (fp.leq x
               ((_ to_fp 8 24) RNE 11600.0))))


(declare-const x1 Float32)
(declare-const y1 Float32)
(assert (in_range_1 x1))
(assert (in_range_1 y1))

(declare-const x2 Float32)
(declare-const y2 Float32)
(assert (in_range_1 x2))
(assert (in_range_1 y2))

(define-const diff_x Float32 (fp.sub RNE x1 x2))
(define-const diff_y Float32 (fp.sub RNE y1 y2))

(define-const d Float32 (fp.sqrt RNE (fp.add RNE (fp.mul RNE diff_x diff_x)
                                                 (fp.mul RNE diff_y diff_y))))
(assert (not (in_range_2 d)))

(check-sat)
(exit)
