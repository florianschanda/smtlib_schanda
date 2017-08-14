(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x801C1AC0)))
;; x should be Float32(0x801C1AC0 [Rational(-28779, 11150372599265311570767859136324180752990208), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 10565419.0 13937965749081639463459823920405225941237760000.0))))
;; w should be Float32(0x00084116 [Rational(270475, 356811923176489970264571492362373784095686656), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
