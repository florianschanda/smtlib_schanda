(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(define-fun isFinite ((x Float16)) Bool
  (or (fp.isZero x) (fp.isSubnormal x) (fp.isNormal x)))

(declare-const Numerator Float16)
(declare-const Denominator Float16)

(assert (isFinite Numerator))
(assert (isFinite Denominator))

(declare-const First Float16)
(declare-const Last Float16)

(assert (isFinite First))
(assert (isFinite Last))
(assert (fp.lt First Last))
(assert (fp.eq (fp.neg Last) First))

(define-const one Float16  ((_ to_fp 5 11) RNE 1.0))

(define-const t1 Bool (fp.gt (fp.abs Denominator)
                             (fp.mul RNE (fp.abs Numerator)
                                         (fp.div RNE one Last))))

(define-const Quotient Float16
  (ite t1
       (fp.div RNE Numerator Denominator)
       (ite (fp.gt Numerator (_ +zero 5 11))
            Last
            (ite (fp.lt Numerator (_ +zero 5 11))
                 First
                 (_ +zero 5 11))))

  )

(assert (not (and (isFinite Quotient)
                  (fp.leq First Quotient)
                  (fp.leq Quotient Last))))

(check-sat)
(exit)
