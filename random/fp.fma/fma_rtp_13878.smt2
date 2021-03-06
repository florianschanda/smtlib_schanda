(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00000000)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00111010000111000100000)))
;; y should be Float32(0x001D0E20 [Rational(59505, 22300745198530623141535718272648361505980416), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x762D249F)))
;; z should be Float32(0x762D249F [Rational(877939570849703523340542323720192), 877939570849703523340542323720192.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (fp #b0 #b11101100 #b01011010010010010011111)))
(check-sat)
(exit)
