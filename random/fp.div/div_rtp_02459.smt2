(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80800000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xBB7CB2F6)))
;; y should be Float32(0xBB7CB2F6 [Rational(-8280443, 2147483648), -0.003856])

(declare-const result Float32)
(assert (= result (fp.div RTP x y)))
(assert (= result (fp #b0 #b00001001 #b00000011010110000001010)))
(check-sat)
(exit)
