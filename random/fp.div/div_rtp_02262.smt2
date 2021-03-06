(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x004F6446)))
;; x should be Float32(0x004F6446 [Rational(2601507, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xE13AABCF)))
;; y should be Float32(0xE13AABCF [Rational(-215217156975665086464), -215217156975665086464.000000])

(declare-const result Float32)
(assert (= result (fp.div RTP x y)))
(assert (= result (fp #b1 #b00000000 #b00000000000000000000000)))
(check-sat)
(exit)
