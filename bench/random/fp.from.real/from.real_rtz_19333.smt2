(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0732C038)))
;; x should be Float32(0x0732C038 [Rational(1464327, 10889035741470030830827987437816582766592), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 117146178613.0 871122859317602466466238995025326621327360000.0))))
;; w should be Float32(0x0732C039 [Rational(11714617, 87112285931760246646623899502532662132736), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
