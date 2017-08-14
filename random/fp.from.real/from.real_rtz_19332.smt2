(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0732C038)))
;; x should be Float32(0x0732C038 [Rational(1464327, 10889035741470030830827987437816582766592), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 3774556279.0 54445178707350154154139937189082913832960000.0))))
;; w should be Float32(0x06B84DF4 [Rational(3019645, 43556142965880123323311949751266331066368), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
