(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b01000001 #b11110011000100010000000)))
;; x should be Float32(0x20F98880 [Rational(127761, 302231454903657293676544), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4AA55F5D)))
;; y should be Float32(0x4AA55F5D [Rational(10837853, 2), 5418926.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xFC989284)))
;; z should be Float32(0xFC989284 [Rational(-6337606499335030610488752708245258240), -6337606499335030610488752708245258240.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result ((_ to_fp 8 24) #xFC989284)))
(check-sat)
(exit)
