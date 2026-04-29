(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10101010111010000101010)))
;; x should be Float32(0x8055742A [Rational(-2800149, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 4995633369861325259669293593651386646275095663531631.0 636573742604526901958889277627930675328583873020605078323793890423244156176042720682311680.0)))))
;; w should be Float32(0x8055742A [Rational(-2800149, 356811923176489970264571492362373784095686656), -0.000000])

(assert (= x w))
(check-sat)
(exit)
