(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ -zero 8 24)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x007D5920)))
;; y should be Float32(0x007D5920 [Rational(256713, 22300745198530623141535718272648361505980416), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b01111000 #b00011100000100000110101)))
;; z should be Float32(0x3C0E0835 [Rational(9308213, 1073741824), 0.008669])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (fp #b0 #b01111000 #b00011100000100000110101)))
(check-sat)
(exit)
