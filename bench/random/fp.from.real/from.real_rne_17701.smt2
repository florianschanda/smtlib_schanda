(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8004C03C)))
;; x should be Float32(0x8004C03C [Rational(-77839, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 22219119272662928494102759378021829186435248084406519.0 50925899408362152156711142210234454026286709841648406265903511233859532494083417654584934400.0)))))
;; w should be Float32(0x8004C03C [Rational(-77839, 178405961588244985132285746181186892047843328), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
