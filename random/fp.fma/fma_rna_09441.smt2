(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000110 #b01010000011110100110111)))
;; x should be Float32(0x03283D37 [Rational(11025719, 22300745198530623141535718272648361505980416), 0.000000])

(declare-const y Float32)
(assert (= y (_ +oo 8 24)))
;; y should be Float32(+oo)

(declare-const z Float32)
(assert (= z (fp #b1 #b10000111 #b00100101100011100101000)))
;; z should be Float32(0xC392C728 [Rational(-1202405, 4096), -293.555908])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (fp #b0 #b11111111 #b00000000000000000000000)))
(check-sat)
(exit)
