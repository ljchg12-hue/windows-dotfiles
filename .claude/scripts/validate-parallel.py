#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""병렬처리 한도 검증 스크립트
ABSOLUTE RULES #3 구현
"""

import sys
import io

# Windows에서 UTF-8 출력 강제
if sys.platform == 'win32':
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')
    sys.stderr = io.TextIOWrapper(sys.stderr.buffer, encoding='utf-8')

def validate_parallel_batch(tools):
    """3-7개 규칙 검증"""
    count = len(tools)

    print("━" * 41)
    print(f"🔢 병렬처리 검증: {count}개 도구")
    print("━" * 41)
    print()

    if count < 3:
        print(f"❌ 위반: {count}개 < 최소 3개")
        print("🔴 ABSOLUTE RULES #3: 속도 저하 방지를 위해 최소 3개 필요")
        return False

    if count > 7:
        print(f"❌ 위반: {count}개 > 최대 7개")
        print("🔴 ABSOLUTE RULES #3: 컨텍스트 관리를 위해 최대 7개 제한")
        return False

    print(f"✅ 검증 통과: {count}개 (3-7개 범위 준수)")
    print()
    print("도구 목록:")
    for i, tool in enumerate(tools, 1):
        print(f"  {i}. {tool}")
    return True

def main():
    if len(sys.argv) < 2:
        print("사용법: validate-parallel.py <tool1> <tool2> ...")
        print()
        print("예시:")
        print("  validate-parallel.py Read Edit Write Bash Grep")
        print("  → ✅ 5개 (3-7개 범위)")
        sys.exit(1)

    tools = sys.argv[1:]

    if validate_parallel_batch(tools):
        sys.exit(0)
    else:
        sys.exit(1)

if __name__ == "__main__":
    main()
