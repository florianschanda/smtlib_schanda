(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 598631103042003153718591560530669990752458355644140491.0 50925899408362152156711142210234454026286709841648406265903511233859532494083417654584934400.0)))))
;; w should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
