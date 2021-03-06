(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11111111100000100011011)))
;; x should be Float32(0xCAFFC11B [Rational(-16761115, 2), -8380557.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCCEED4AF)))
;; y should be Float32(0xCCEED4AF [Rational(-125216120), -125216120.000000])

(declare-const result Float32)
(assert (= result (fp.mul RNA x y)))
(assert (= result ((_ to_fp 8 24) #x586E9A02)))
(check-sat)
(exit)
