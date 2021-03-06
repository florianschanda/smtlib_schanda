(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x6F9B77BB)))
;; x should be Float32(0x6F9B77BB [Rational(96229843554749846295572119552), 96229843554749846295572119552.000000])

(declare-const result Bool)
(assert (= result (fp.isIntegral x)))
(assert result)
(check-sat)
(exit)
