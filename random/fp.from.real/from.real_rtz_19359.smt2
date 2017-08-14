(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01100001000101100111110)))
;; x should be Float32(0x00308B3E [Rational(1590687, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 14189404889478992696181497919680950455165765021506151.0 3182868713022634509794446388139653376642919365103025391618969452116220780880213603411558400.0))))
;; w should be Float32(0x00308B3E [Rational(1590687, 356811923176489970264571492362373784095686656), 0.000000])

(assert (= x w))
(check-sat)
(exit)
