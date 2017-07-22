(set-logic QF_FP)
(set-info :source |Reviewing of some industrial code by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat) ;; machine checked for x1 = x2 = 4096

;; This is the same as 20, but colibri seems unsound when using fp.neg

(define-const first Float32 ((_ to_fp 8 24) RNE (- 4096.0)))
(define-const last Float32 ((_ to_fp 8 24) RNE 4096.0))

(define-fun in_range_1 ((x Float32)) Bool
  (and (fp.geq x first)
       (fp.leq x last)))

(declare-const x1 Float32)
(assert (in_range_1 x1))

(declare-const x2 Float32)
(assert (in_range_1 x2))

(declare-const fraction Float32)
(assert (and (fp.geq fraction (_ +zero 8 24))
             (fp.leq fraction ((_ to_fp 8 24) RNE 1.0))))
(define-const inv_fraction Float32
  (fp.sub RNE ((_ to_fp 8 24) RNE 1.0) fraction))

(define-const x Float32
  (fp.add RNE (fp.mul RNE x1 inv_fraction)
              (fp.mul RNE x2 fraction)))

(assert (not (in_range_1 x)))
(check-sat)
(exit)
