(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x007C67E3)))
;; x should be Float32(0x007C67E3 [Rational(8153059, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 36363862324424104874903359030271228615182330154763321.0 3182868713022634509794446388139653376642919365103025391618969452116220780880213603411558400.0))))
;; w should be Float32(0x007C67E3 [Rational(8153059, 713623846352979940529142984724747568191373312), 0.000000])

(assert (= x w))
(check-sat)
(exit)
