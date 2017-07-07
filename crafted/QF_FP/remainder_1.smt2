(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(declare-const a Float16)
(declare-const b Float16)

(define-const lo Float16 (fp.neg (fp.abs b)))
(define-const hi Float16 (fp.abs b))

(define-const r Float16 (fp.rem a b))

(assert (or (fp.isZero a)
            (fp.isSubnormal a)
            (fp.isNormal a)))
(assert (or (fp.isSubnormal b)
            (fp.isNormal b)))

(assert (not (fp.lt lo r hi)))

(check-sat)
(exit)
