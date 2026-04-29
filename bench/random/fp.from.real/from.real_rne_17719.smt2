(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8021F16A)))
;; x should be Float32(0x8021F16A [Rational(-1112245, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 19843113879508059959966718364490304222621492304530741.0 6365737426045269019588892776279306753285838730206050783237938904232441561760427206823116800.0)))))
;; w should be Float32(0x8021F16A [Rational(-1112245, 356811923176489970264571492362373784095686656), -0.000000])

(assert (= x w))
(check-sat)
(exit)
