(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x24260173)))
;; x should be Float32(0x24260173 [Rational(10879347, 302231454903657293676544), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 10275253039198938611211545023729.0 285449538541191976211657193889899027276549324800.0))))
;; w should be Float32(0x24260173 [Rational(10879347, 302231454903657293676544), 0.000000])

(assert (= x w))
(check-sat)
(exit)
