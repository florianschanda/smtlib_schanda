(set-logic QF_FP)
(set-info :source |Reviewing of some industrial code by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

;; Exploring an invalid postcondition

(define-const first Float32 (_ +zero 8 24))
(define-const last Float32 ((_ to_fp 8 24) RNE 360.0))

(define-fun in_range_1 ((x Float32)) Bool
  (and (fp.leq first x)
       (fp.leq x last)))

(declare-const x Float32)
(declare-const y Float32)
(assert (in_range_1 x))
(assert (in_range_1 y))

(define-const tmp Float32 (fp.add RNE x y))
(define-const r Float32 (ite (fp.geq tmp last)
                             (fp.sub RNE tmp last)
                             (ite (fp.lt tmp first)
                                  (fp.add RNE tmp last)
                                  tmp)))

(assert (not (fp.lt r last)))
(check-sat)
(exit)
